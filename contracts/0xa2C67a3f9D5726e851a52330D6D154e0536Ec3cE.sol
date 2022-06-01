contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#  - harvest()
#
const devFundMax = 100000

const treasuryMax = 100000

const getName = ''

const weth = 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619

const performanceMax = 100000

const usdcBuyback = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const sub_9dc9505b(?) = 0x841fad6eae12c286d1fd18d1d525dffa75c7effe

const sub_c2af6b58(?) = 0x5cc61a78f164885776aa610fb0fe1257df78e59b

const sub_c32b2b51(?) = 0xe41d2489571d322189246dafa5ebde1f4699f498

const sub_ce884d32(?) = 0xf16e81dce15b08f326220742020379b855b87df9

const WFTM = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83

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
uint32 stor12;
address controllerAddress;
uint256 stor12;
address strategistAddress;
address timelockAddress;
address univ2Router2Address;
address sushiRouterAddress;
address sub_8ed8ea7eAddress;
address sub_50d7d613Address;
address sub_2d2e3a93Address;
address sub_6a0f3a10Address;
uint32 stor21;
address sub_2a1b004fAddress;
uint256 principal;
uint256 sub_d72f39a0;

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

function sub_2a1b004f(?) {
    return address(sub_2a1b004fAddress)
}

function sub_2d2e3a93(?) {
    return sub_2d2e3a93Address
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

function sub_6a0f3a10(?) {
    return sub_6a0f3a10Address
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

function principal() {
    return principal
}

function treasuryFee() {
    return treasuryFee
}

function timelock() {
    return timelockAddress
}

function sub_d72f39a0(?) {
    return sub_d72f39a0
}

function sub_e13f8513(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
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

function sub_fb81a6b0(?) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        require msg.sender == strategistAddress
    sub_d72f39a0 = arg1
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

function setController(address arg1) {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    address(controllerAddress) = arg1
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

function sub_08ffcca4(?) {
    require ext_code.size(address(sub_2a1b004fAddress))
    staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_6a0f3a10Address)
        call sub_6a0f3a10Address.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(stor21), ext_call.return_data[0], this.address, block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] + principal < principal:
            revert with 0, 'SafeMath: addition overflow'
        principal += ext_call.return_data[0]
}

function balanceOfPool() {
    require ext_code.size(address(sub_2a1b004fAddress))
    staticcall address(sub_2a1b004fAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(address(sub_2a1b004fAddress))
    staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function getHarvestable() {
    require ext_code.size(address(sub_2a1b004fAddress))
    staticcall address(sub_2a1b004fAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 <= principal:
            return 0
        if principal > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -principal
    require ext_code.size(address(sub_2a1b004fAddress))
    staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 <= principal:
            return 0
        if principal > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -principal
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= principal:
        return 0
    if principal > ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - principal)
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
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor12)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor12):
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
    require ext_code.size(address(sub_2a1b004fAddress))
    staticcall address(sub_2a1b004fAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_6a0f3a10Address)
        call sub_6a0f3a10Address.redeem(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args 0, uint32(stor21), 0, this.address, block.timestamp + 60, 160, 0, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > principal:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).vaults(address arg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, '!vault'
        mem[260] = ext_call.return_data[12 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[388 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        call wantAddress.mem[288 len 4] with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, mem[452 len 4]
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
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_6a0f3a10Address)
            call sub_6a0f3a10Address.redeem(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args 0, uint32(stor21), 0, this.address, block.timestamp + 60, 160, 0, mem[356]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(sub_2a1b004fAddress))
            staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > principal:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(sub_6a0f3a10Address)
            call sub_6a0f3a10Address.redeem(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args 0, uint32(stor21), ext_call.return_data[0] * ext_call.return_data[0] / 10^18, this.address, block.timestamp + 60, 160, 0, mem[356]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(sub_2a1b004fAddress))
            staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                if 0 > principal:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, block.timestamp + 60)
                if ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18 > principal:
                    revert with 0, 'SafeMath: subtraction overflow'
                principal -= ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / 10^18
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).vaults(address arg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, '!vault'
        mem[324] = ext_call.return_data[12 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[452 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        call wantAddress.mem[352 len 4] with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, mem[516 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[484]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 563 len 22]
    return ext_call.return_data[0]
}

function balanceOf() {
    if not sub_5d158350:
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0]
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
    if sub_7b756553 <= 0:
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0]
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
    if sub_14b74d9a > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number - sub_14b74d9a >= sub_5d158350:
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0]
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
    if sub_5d158350 + sub_14b74d9a < sub_14b74d9a:
        revert with 0, 'SafeMath: addition overflow'
    if block.number > sub_5d158350 + sub_14b74d9a:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_7b756553:
        if not sub_5d158350:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return (ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return (ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / sub_5d158350 / 10^18 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
    if (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553) / sub_7b756553 != sub_5d158350 + sub_14b74d9a - block.number:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553):
        if not sub_5d158350:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return (ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return (ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / sub_5d158350 / 10^18 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
    if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553) != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not sub_5d158350:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(address(sub_2a1b004fAddress))
    staticcall address(sub_2a1b004fAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[0] - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
    require ext_code.size(address(sub_2a1b004fAddress))
    staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (ext_call.return_data[0] - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
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
            _2287 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2437 = mem[_2287 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2287 + 192])] = mem[_2287 + 224 len floor32(mem[_2287 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3962 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2437) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2437) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2437) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2437) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2437) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2437) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2437) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2437) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5412 = mem[(32 * _2437) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2437) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2437) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2437) + ceil32(return_data.size) + mem[(32 * _2437) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2437) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2437) + ceil32(return_data.size) + mem[(32 * _2437) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2437) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2437) + ceil32(return_data.size) + mem[(32 * _2437) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5487 = mem[(32 * _2437) + ceil32(return_data.size) + _5412 + 224]
            mem[(32 * _2437) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2437) + ceil32(return_data.size) + _5412 + 224])] = mem[(32 * _2437) + ceil32(return_data.size) + _5412 + 256 len floor32(mem[(32 * _2437) + ceil32(return_data.size) + _5412 + 224])]
            require 1 < mem[(32 * _2437) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5487) + (32 * _2437) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3962 > mem[(32 * _2437) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5487) + (32 * _2437) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5487) + (32 * _2437) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619 == arg2:
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
            _2291 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2439 = mem[_2291 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2291 + 192])] = mem[_2291 + 224 len floor32(mem[_2291 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3964 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2439) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2439) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2439) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2439) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2439) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2439) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2439) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2439) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5414 = mem[(32 * _2439) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2439) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2439) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2439) + ceil32(return_data.size) + mem[(32 * _2439) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2439) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2439) + ceil32(return_data.size) + mem[(32 * _2439) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2439) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2439) + ceil32(return_data.size) + mem[(32 * _2439) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5488 = mem[(32 * _2439) + ceil32(return_data.size) + _5414 + 224]
            mem[(32 * _2439) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2439) + ceil32(return_data.size) + _5414 + 224])] = mem[(32 * _2439) + ceil32(return_data.size) + _5414 + 256 len floor32(mem[(32 * _2439) + ceil32(return_data.size) + _5414 + 224])]
            require 1 < mem[(32 * _2439) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5488) + (32 * _2439) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3964 > mem[(32 * _2439) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5488) + (32 * _2439) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5488) + (32 * _2439) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg1:
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
            _2295 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2441 = mem[_2295 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2295 + 192])] = mem[_2295 + 224 len floor32(mem[_2295 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3966 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2441) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2441) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2441) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2441) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2441) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2441) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2441) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2441) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5416 = mem[(32 * _2441) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2441) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2441) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2441) + ceil32(return_data.size) + mem[(32 * _2441) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2441) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2441) + ceil32(return_data.size) + mem[(32 * _2441) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2441) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2441) + ceil32(return_data.size) + mem[(32 * _2441) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5489 = mem[(32 * _2441) + ceil32(return_data.size) + _5416 + 224]
            mem[(32 * _2441) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2441) + ceil32(return_data.size) + _5416 + 224])] = mem[(32 * _2441) + ceil32(return_data.size) + _5416 + 256 len floor32(mem[(32 * _2441) + ceil32(return_data.size) + _5416 + 224])]
            require 1 < mem[(32 * _2441) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5489) + (32 * _2441) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3966 > mem[(32 * _2441) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5489) + (32 * _2441) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5489) + (32 * _2441) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg2:
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
            _2299 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2443 = mem[_2299 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2299 + 192])] = mem[_2299 + 224 len floor32(mem[_2299 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3968 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2443) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2443) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2443) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2443) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2443) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2443) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2443) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2443) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5418 = mem[(32 * _2443) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2443) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2443) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2443) + ceil32(return_data.size) + mem[(32 * _2443) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2443) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2443) + ceil32(return_data.size) + mem[(32 * _2443) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2443) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2443) + ceil32(return_data.size) + mem[(32 * _2443) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5490 = mem[(32 * _2443) + ceil32(return_data.size) + _5418 + 224]
            mem[(32 * _2443) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2443) + ceil32(return_data.size) + _5418 + 224])] = mem[(32 * _2443) + ceil32(return_data.size) + _5418 + 256 len floor32(mem[(32 * _2443) + ceil32(return_data.size) + _5418 + 224])]
            require 1 < mem[(32 * _2443) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5490) + (32 * _2443) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3968 > mem[(32 * _2443) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5490) + (32 * _2443) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5490) + (32 * _2443) + (2 * ceil32(return_data.size)) + 352 len 64]
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
            _2303 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2445 = mem[_2303 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2303 + 192])] = mem[_2303 + 224 len floor32(mem[_2303 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _3970 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _2445) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2445) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _2445) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _2445) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _2445) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2445) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2445) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2445) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _5420 = mem[(32 * _2445) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2445) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2445) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2445) + ceil32(return_data.size) + mem[(32 * _2445) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2445) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2445) + ceil32(return_data.size) + mem[(32 * _2445) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _2445) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2445) + ceil32(return_data.size) + mem[(32 * _2445) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _5491 = mem[(32 * _2445) + ceil32(return_data.size) + _5420 + 224]
            mem[(32 * _2445) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2445) + ceil32(return_data.size) + _5420 + 224])] = mem[(32 * _2445) + ceil32(return_data.size) + _5420 + 256 len floor32(mem[(32 * _2445) + ceil32(return_data.size) + _5420 + 224])]
            require 1 < mem[(32 * _2445) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5491) + (32 * _2445) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3970 > mem[(32 * _2445) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5491) + (32 * _2445) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5491) + (32 * _2445) + (2 * ceil32(return_data.size)) + 352 len 64]
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
            _2307 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2447 = mem[_2307 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2307 + 192])] = mem[_2307 + 224 len floor32(mem[_2307 + 192])]
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
            _5492 = mem[(32 * _2447) + ceil32(return_data.size) + _5422 + 224]
            mem[(32 * _2447) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2447) + ceil32(return_data.size) + _5422 + 224])] = mem[(32 * _2447) + ceil32(return_data.size) + _5422 + 256 len floor32(mem[(32 * _2447) + ceil32(return_data.size) + _5422 + 224])]
            require 1 < mem[(32 * _2447) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5492) + (32 * _2447) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3972 > mem[(32 * _2447) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5492) + (32 * _2447) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5492) + (32 * _2447) + (2 * ceil32(return_data.size)) + 352 len 64]
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
            _2311 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2449 = mem[_2311 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2311 + 192])] = mem[_2311 + 224 len floor32(mem[_2311 + 192])]
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
            _5493 = mem[(32 * _2449) + ceil32(return_data.size) + _5424 + 224]
            mem[(32 * _2449) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2449) + ceil32(return_data.size) + _5424 + 224])] = mem[(32 * _2449) + ceil32(return_data.size) + _5424 + 256 len floor32(mem[(32 * _2449) + ceil32(return_data.size) + _5424 + 224])]
            require 1 < mem[(32 * _2449) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5493) + (32 * _2449) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3974 > mem[(32 * _2449) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5493) + (32 * _2449) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5493) + (32 * _2449) + (2 * ceil32(return_data.size)) + 352 len 64]
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
            _2315 = mem[224 len 4], Mask(224, 32, arg3) >> 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _2451 = mem[_2315 + 224]
            mem[ceil32(return_data.size) + 256 len floor32(mem[_2315 + 224])] = mem[_2315 + 256 len floor32(mem[_2315 + 224])]
            require 2 < mem[ceil32(return_data.size) + 224]
            _3976 = mem[ceil32(return_data.size) + 320]
            mem[(32 * _2451) + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2451) + ceil32(return_data.size) + 260] = arg3
            mem[(32 * _2451) + ceil32(return_data.size) + 292] = 64
            mem[(32 * _2451) + ceil32(return_data.size) + 324] = 3
            mem[(32 * _2451) + ceil32(return_data.size) + 356 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=mem[(32 * _2451) + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2451) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2451) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _5426 = mem[(32 * _2451) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2451) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2451) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2451) + ceil32(return_data.size) + mem[(32 * _2451) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _2451) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2451) + ceil32(return_data.size) + mem[(32 * _2451) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _2451) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _2451) + ceil32(return_data.size) + mem[(32 * _2451) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            _5494 = mem[(32 * _2451) + ceil32(return_data.size) + _5426 + 256]
            mem[(32 * _2451) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _2451) + ceil32(return_data.size) + _5426 + 256])] = mem[(32 * _2451) + ceil32(return_data.size) + _5426 + 288 len floor32(mem[(32 * _2451) + ceil32(return_data.size) + _5426 + 256])]
            require 2 < mem[(32 * _2451) + (2 * ceil32(return_data.size)) + 256]
            mem[(32 * _5494) + (32 * _2451) + (2 * ceil32(return_data.size)) + 384 len 0] = None
            if _3976 > mem[(32 * _2451) + (2 * ceil32(return_data.size)) + 352]:
                return 1, Array(len=3, data=mem[(32 * _5494) + (32 * _2451) + (2 * ceil32(return_data.size)) + 384 len 96])
            return 0, 64, 3, mem[(32 * _5494) + (32 * _2451) + (2 * ceil32(return_data.size)) + 384 len 96]
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
        _2319 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2453 = mem[_2319 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2319 + 192])] = mem[_2319 + 224 len floor32(mem[_2319 + 192])]
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
        _5495 = mem[(32 * _2453) + ceil32(return_data.size) + _5428 + 224]
        mem[(32 * _2453) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2453) + ceil32(return_data.size) + _5428 + 224])] = mem[(32 * _2453) + ceil32(return_data.size) + _5428 + 256 len floor32(mem[(32 * _2453) + ceil32(return_data.size) + _5428 + 224])]
        require 1 < mem[(32 * _2453) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5495) + (32 * _2453) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _3978 > mem[(32 * _2453) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5495) + (32 * _2453) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5495) + (32 * _2453) + (2 * ceil32(return_data.size)) + 352 len 64]
    if 1 == bool(buybackEnabled):
        if 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 == arg1:
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
            _2359 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2473 = mem[_2359 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2359 + 192])] = mem[_2359 + 224 len floor32(mem[_2359 + 192])]
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
            _5505 = mem[(32 * _2473) + ceil32(return_data.size) + _5448 + 224]
            mem[(32 * _2473) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2473) + ceil32(return_data.size) + _5448 + 224])] = mem[(32 * _2473) + ceil32(return_data.size) + _5448 + 256 len floor32(mem[(32 * _2473) + ceil32(return_data.size) + _5448 + 224])]
            require 1 < mem[(32 * _2473) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5505) + (32 * _2473) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _3998 > mem[(32 * _2473) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5505) + (32 * _2473) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5505) + (32 * _2473) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg1:
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
            _2363 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2475 = mem[_2363 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2363 + 192])] = mem[_2363 + 224 len floor32(mem[_2363 + 192])]
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
            _5506 = mem[(32 * _2475) + ceil32(return_data.size) + _5450 + 224]
            mem[(32 * _2475) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2475) + ceil32(return_data.size) + _5450 + 224])] = mem[(32 * _2475) + ceil32(return_data.size) + _5450 + 256 len floor32(mem[(32 * _2475) + ceil32(return_data.size) + _5450 + 224])]
            require 1 < mem[(32 * _2475) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5506) + (32 * _2475) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _4000 > mem[(32 * _2475) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5506) + (32 * _2475) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5506) + (32 * _2475) + (2 * ceil32(return_data.size)) + 352 len 64]
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
            _2367 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2477 = mem[_2367 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2367 + 192])] = mem[_2367 + 224 len floor32(mem[_2367 + 192])]
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
            _5507 = mem[(32 * _2477) + ceil32(return_data.size) + _5452 + 224]
            mem[(32 * _2477) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2477) + ceil32(return_data.size) + _5452 + 224])] = mem[(32 * _2477) + ceil32(return_data.size) + _5452 + 256 len floor32(mem[(32 * _2477) + ceil32(return_data.size) + _5452 + 224])]
            require 1 < mem[(32 * _2477) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5507) + (32 * _2477) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _4002 > mem[(32 * _2477) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5507) + (32 * _2477) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5507) + (32 * _2477) + (2 * ceil32(return_data.size)) + 352 len 64]
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
            _2383 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _2485 = mem[_2383 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_2383 + 192])] = mem[_2383 + 224 len floor32(mem[_2383 + 192])]
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
            _5511 = mem[(32 * _2485) + ceil32(return_data.size) + _5460 + 224]
            mem[(32 * _2485) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2485) + ceil32(return_data.size) + _5460 + 224])] = mem[(32 * _2485) + ceil32(return_data.size) + _5460 + 256 len floor32(mem[(32 * _2485) + ceil32(return_data.size) + _5460 + 224])]
            require 1 < mem[(32 * _2485) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _5511) + (32 * _2485) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _4010 > mem[(32 * _2485) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _5511) + (32 * _2485) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _5511) + (32 * _2485) + (2 * ceil32(return_data.size)) + 352 len 64]
        if 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619 == arg1:
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
            _2379 = mem[288 len 4], Mask(224, 32, arg3) >> 32
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            _2483 = mem[_2379 + 288]
            mem[ceil32(return_data.size) + 320 len floor32(mem[_2379 + 288])] = mem[_2379 + 320 len floor32(mem[_2379 + 288])]
            require 1 < mem[ceil32(return_data.size) + 288]
            _4008 = mem[ceil32(return_data.size) + 352]
            mem[(32 * _2483) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2483) + ceil32(return_data.size) + 324] = arg3
            mem[(32 * _2483) + ceil32(return_data.size) + 356] = 64
            mem[(32 * _2483) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _2483) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _2483) + ceil32(return_data.size) + 420 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2483) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2483) + (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _5458 = mem[(32 * _2483) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2483) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2483) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2483) + ceil32(return_data.size) + mem[(32 * _2483) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _2483) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2483) + ceil32(return_data.size) + mem[(32 * _2483) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
            mem[(32 * _2483) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _2483) + ceil32(return_data.size) + mem[(32 * _2483) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            _5510 = mem[(32 * _2483) + ceil32(return_data.size) + _5458 + 320]
            mem[(32 * _2483) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _2483) + ceil32(return_data.size) + _5458 + 320])] = mem[(32 * _2483) + ceil32(return_data.size) + _5458 + 352 len floor32(mem[(32 * _2483) + ceil32(return_data.size) + _5458 + 320])]
            require 1 < mem[(32 * _2483) + (2 * ceil32(return_data.size)) + 320]
            mem[(32 * _5510) + (32 * _2483) + (2 * ceil32(return_data.size)) + 448 len 0] = None
            if _4008 > mem[(32 * _2483) + (2 * ceil32(return_data.size)) + 384]:
                return 1, Array(len=2, data=mem[(32 * _5510) + (32 * _2483) + (2 * ceil32(return_data.size)) + 448 len 64])
            return 0, 64, 2, mem[(32 * _5510) + (32 * _2483) + (2 * ceil32(return_data.size)) + 448 len 64]
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
            _2371 = mem[224 len 4], Mask(224, 32, arg3) >> 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _2479 = mem[_2371 + 224]
            mem[ceil32(return_data.size) + 256 len floor32(mem[_2371 + 224])] = mem[_2371 + 256 len floor32(mem[_2371 + 224])]
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
            _5508 = mem[(32 * _2479) + ceil32(return_data.size) + _5454 + 256]
            mem[(32 * _2479) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _2479) + ceil32(return_data.size) + _5454 + 256])] = mem[(32 * _2479) + ceil32(return_data.size) + _5454 + 288 len floor32(mem[(32 * _2479) + ceil32(return_data.size) + _5454 + 256])]
            require 2 < mem[(32 * _2479) + (2 * ceil32(return_data.size)) + 256]
            mem[(32 * _5508) + (32 * _2479) + (2 * ceil32(return_data.size)) + 384 len 0] = None
            if _4004 > mem[(32 * _2479) + (2 * ceil32(return_data.size)) + 352]:
                return 1, Array(len=3, data=mem[(32 * _5508) + (32 * _2479) + (2 * ceil32(return_data.size)) + 384 len 96])
            return 0, 64, 3, mem[(32 * _5508) + (32 * _2479) + (2 * ceil32(return_data.size)) + 384 len 96]
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
        _2375 = mem[352 len 4], Mask(224, 32, arg3) >> 32
        require mem[352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352] <= 4294967296 and mem[352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352]
        _2481 = mem[_2375 + 352]
        mem[ceil32(return_data.size) + 384 len floor32(mem[_2375 + 352])] = mem[_2375 + 384 len floor32(mem[_2375 + 352])]
        require 2 < mem[ceil32(return_data.size) + 352]
        _4006 = mem[ceil32(return_data.size) + 448]
        mem[(32 * _2481) + ceil32(return_data.size) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _2481) + ceil32(return_data.size) + 388] = arg3
        mem[(32 * _2481) + ceil32(return_data.size) + 420] = 64
        mem[(32 * _2481) + ceil32(return_data.size) + 452] = 3
        mem[(32 * _2481) + ceil32(return_data.size) + 484 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[(32 * _2481) + ceil32(return_data.size) + 484 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2481) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _2481) + (2 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _5456 = mem[(32 * _2481) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _2481) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _2481) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _2481) + ceil32(return_data.size) + mem[(32 * _2481) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 384] <= 4294967296 and mem[(32 * _2481) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2481) + ceil32(return_data.size) + mem[(32 * _2481) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 384]) + 32 <= return_data.size
        mem[(32 * _2481) + (2 * ceil32(return_data.size)) + 384] = mem[(32 * _2481) + ceil32(return_data.size) + mem[(32 * _2481) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 384]
        _5509 = mem[(32 * _2481) + ceil32(return_data.size) + _5456 + 384]
        mem[(32 * _2481) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _2481) + ceil32(return_data.size) + _5456 + 384])] = mem[(32 * _2481) + ceil32(return_data.size) + _5456 + 416 len floor32(mem[(32 * _2481) + ceil32(return_data.size) + _5456 + 384])]
        require 2 < mem[(32 * _2481) + (2 * ceil32(return_data.size)) + 384]
        mem[(32 * _5509) + (32 * _2481) + (2 * ceil32(return_data.size)) + 512 len 0] = None
        if _4006 > mem[(32 * _2481) + (2 * ceil32(return_data.size)) + 480]:
            return 1, Array(len=3, data=mem[(32 * _5509) + (32 * _2481) + (2 * ceil32(return_data.size)) + 512 len 96])
        return 0, 64, 3, mem[(32 * _5509) + (32 * _2481) + (2 * ceil32(return_data.size)) + 512 len 96]
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
        _2323 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2455 = mem[_2323 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2323 + 192])] = mem[_2323 + 224 len floor32(mem[_2323 + 192])]
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
        _5496 = mem[(32 * _2455) + ceil32(return_data.size) + _5430 + 224]
        mem[(32 * _2455) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2455) + ceil32(return_data.size) + _5430 + 224])] = mem[(32 * _2455) + ceil32(return_data.size) + _5430 + 256 len floor32(mem[(32 * _2455) + ceil32(return_data.size) + _5430 + 224])]
        require 1 < mem[(32 * _2455) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5496) + (32 * _2455) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _3980 > mem[(32 * _2455) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5496) + (32 * _2455) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5496) + (32 * _2455) + (2 * ceil32(return_data.size)) + 352 len 64]
    if 0x7ceb23fd6bc0add59e62ac25578270cff1b9f619 == arg2:
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
        _2327 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2457 = mem[_2327 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2327 + 192])] = mem[_2327 + 224 len floor32(mem[_2327 + 192])]
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
        _5497 = mem[(32 * _2457) + ceil32(return_data.size) + _5432 + 224]
        mem[(32 * _2457) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2457) + ceil32(return_data.size) + _5432 + 224])] = mem[(32 * _2457) + ceil32(return_data.size) + _5432 + 256 len floor32(mem[(32 * _2457) + ceil32(return_data.size) + _5432 + 224])]
        require 1 < mem[(32 * _2457) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5497) + (32 * _2457) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _3982 > mem[(32 * _2457) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5497) + (32 * _2457) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5497) + (32 * _2457) + (2 * ceil32(return_data.size)) + 352 len 64]
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg1:
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
        _2331 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2459 = mem[_2331 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2331 + 192])] = mem[_2331 + 224 len floor32(mem[_2331 + 192])]
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
        _5498 = mem[(32 * _2459) + ceil32(return_data.size) + _5434 + 224]
        mem[(32 * _2459) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2459) + ceil32(return_data.size) + _5434 + 224])] = mem[(32 * _2459) + ceil32(return_data.size) + _5434 + 256 len floor32(mem[(32 * _2459) + ceil32(return_data.size) + _5434 + 224])]
        require 1 < mem[(32 * _2459) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5498) + (32 * _2459) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _3984 > mem[(32 * _2459) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5498) + (32 * _2459) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5498) + (32 * _2459) + (2 * ceil32(return_data.size)) + 352 len 64]
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg2:
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
        _2335 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2461 = mem[_2335 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2335 + 192])] = mem[_2335 + 224 len floor32(mem[_2335 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _3986 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _2461) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _2461) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _2461) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _2461) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _2461) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _2461) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _2461) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _2461) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _5436 = mem[(32 * _2461) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _2461) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _2461) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _2461) + ceil32(return_data.size) + mem[(32 * _2461) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _2461) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2461) + ceil32(return_data.size) + mem[(32 * _2461) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _2461) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2461) + ceil32(return_data.size) + mem[(32 * _2461) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _5499 = mem[(32 * _2461) + ceil32(return_data.size) + _5436 + 224]
        mem[(32 * _2461) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2461) + ceil32(return_data.size) + _5436 + 224])] = mem[(32 * _2461) + ceil32(return_data.size) + _5436 + 256 len floor32(mem[(32 * _2461) + ceil32(return_data.size) + _5436 + 224])]
        require 1 < mem[(32 * _2461) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5499) + (32 * _2461) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _3986 > mem[(32 * _2461) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5499) + (32 * _2461) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5499) + (32 * _2461) + (2 * ceil32(return_data.size)) + 352 len 64]
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
        _2339 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2463 = mem[_2339 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2339 + 192])] = mem[_2339 + 224 len floor32(mem[_2339 + 192])]
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
        _5500 = mem[(32 * _2463) + ceil32(return_data.size) + _5438 + 224]
        mem[(32 * _2463) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2463) + ceil32(return_data.size) + _5438 + 224])] = mem[(32 * _2463) + ceil32(return_data.size) + _5438 + 256 len floor32(mem[(32 * _2463) + ceil32(return_data.size) + _5438 + 224])]
        require 1 < mem[(32 * _2463) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5500) + (32 * _2463) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _3988 > mem[(32 * _2463) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5500) + (32 * _2463) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5500) + (32 * _2463) + (2 * ceil32(return_data.size)) + 352 len 64]
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
        _2343 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2465 = mem[_2343 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2343 + 192])] = mem[_2343 + 224 len floor32(mem[_2343 + 192])]
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
        _5501 = mem[(32 * _2465) + ceil32(return_data.size) + _5440 + 224]
        mem[(32 * _2465) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2465) + ceil32(return_data.size) + _5440 + 224])] = mem[(32 * _2465) + ceil32(return_data.size) + _5440 + 256 len floor32(mem[(32 * _2465) + ceil32(return_data.size) + _5440 + 224])]
        require 1 < mem[(32 * _2465) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5501) + (32 * _2465) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _3990 > mem[(32 * _2465) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5501) + (32 * _2465) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5501) + (32 * _2465) + (2 * ceil32(return_data.size)) + 352 len 64]
    if arg1 != 0xd500b1d8e8ef31e21c99d1db9a6444d3adf1270:
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
            _2351 = mem[224 len 4], Mask(224, 32, arg3) >> 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _2469 = mem[_2351 + 224]
            mem[ceil32(return_data.size) + 256 len floor32(mem[_2351 + 224])] = mem[_2351 + 256 len floor32(mem[_2351 + 224])]
            require 2 < mem[ceil32(return_data.size) + 224]
            _3994 = mem[ceil32(return_data.size) + 320]
            mem[(32 * _2469) + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _2469) + ceil32(return_data.size) + 260] = arg3
            mem[(32 * _2469) + ceil32(return_data.size) + 292] = 64
            mem[(32 * _2469) + ceil32(return_data.size) + 324] = 3
            mem[(32 * _2469) + ceil32(return_data.size) + 356 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=mem[(32 * _2469) + ceil32(return_data.size) + 356 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _2469) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _2469) + (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _5444 = mem[(32 * _2469) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _2469) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _2469) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _2469) + ceil32(return_data.size) + mem[(32 * _2469) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _2469) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _2469) + ceil32(return_data.size) + mem[(32 * _2469) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
            mem[(32 * _2469) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _2469) + ceil32(return_data.size) + mem[(32 * _2469) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            _5503 = mem[(32 * _2469) + ceil32(return_data.size) + _5444 + 256]
            mem[(32 * _2469) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _2469) + ceil32(return_data.size) + _5444 + 256])] = mem[(32 * _2469) + ceil32(return_data.size) + _5444 + 288 len floor32(mem[(32 * _2469) + ceil32(return_data.size) + _5444 + 256])]
            require 2 < mem[(32 * _2469) + (2 * ceil32(return_data.size)) + 256]
            mem[(32 * _5503) + (32 * _2469) + (2 * ceil32(return_data.size)) + 384 len 0] = None
            if _3994 > mem[(32 * _2469) + (2 * ceil32(return_data.size)) + 352]:
                return 1, Array(len=3, data=mem[(32 * _5503) + (32 * _2469) + (2 * ceil32(return_data.size)) + 384 len 96])
            return 0, 64, 3, mem[(32 * _5503) + (32 * _2469) + (2 * ceil32(return_data.size)) + 384 len 96]
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
        _2355 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _2471 = mem[_2355 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_2355 + 192])] = mem[_2355 + 224 len floor32(mem[_2355 + 192])]
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
        _5504 = mem[(32 * _2471) + ceil32(return_data.size) + _5446 + 224]
        mem[(32 * _2471) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2471) + ceil32(return_data.size) + _5446 + 224])] = mem[(32 * _2471) + ceil32(return_data.size) + _5446 + 256 len floor32(mem[(32 * _2471) + ceil32(return_data.size) + _5446 + 224])]
        require 1 < mem[(32 * _2471) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _5504) + (32 * _2471) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _3996 > mem[(32 * _2471) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _5504) + (32 * _2471) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _5504) + (32 * _2471) + (2 * ceil32(return_data.size)) + 352 len 64]
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
    _2347 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _2467 = mem[_2347 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_2347 + 192])] = mem[_2347 + 224 len floor32(mem[_2347 + 192])]
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
    _5502 = mem[(32 * _2467) + ceil32(return_data.size) + _5442 + 224]
    mem[(32 * _2467) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2467) + ceil32(return_data.size) + _5442 + 224])] = mem[(32 * _2467) + ceil32(return_data.size) + _5442 + 256 len floor32(mem[(32 * _2467) + ceil32(return_data.size) + _5442 + 224])]
    require 1 < mem[(32 * _2467) + (2 * ceil32(return_data.size)) + 224]
    mem[(32 * _5502) + (32 * _2467) + (2 * ceil32(return_data.size)) + 352 len 0] = None
    if _3992 > mem[(32 * _2467) + (2 * ceil32(return_data.size)) + 288]:
        return 1, Array(len=2, data=mem[(32 * _5502) + (32 * _2467) + (2 * ceil32(return_data.size)) + 352 len 64])
    return 0, 64, 2, mem[(32 * _5502) + (32 * _2467) + (2 * ceil32(return_data.size)) + 352 len 64]
}



}
