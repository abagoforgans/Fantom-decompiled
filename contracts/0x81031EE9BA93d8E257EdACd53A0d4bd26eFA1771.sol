contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#  - harvest()
#  - withdrawAll()
#
const devFundMax = 100000

const treasuryMax = 100000

const getName = ''

const sub_29b5478a(?) = 0x30748322b6e34545dbe0788c421886aeb5297789

const performanceMax = 100000

const sub_a0dbb829(?) = 10000

const sub_c2af6b58(?) = 0x5cc61a78f164885776aa610fb0fe1257df78e59b

const WFTM = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


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
uint8 emergencyExit; offset 160
uint128 stor18; offset 160
address sub_50d7d613Address;
address sub_2d2e3a93Address;
address sub_f7f13d88Address;
uint32 stor21;
address sub_2a1b004fAddress;
address sub_100085f2Address;
address sub_134a8703Address;
uint256 principal;
uint256 sub_d72f39a0;
uint256 sub_6add50ab;
uint256 sub_3f701578;

function sub_100085f2(?) {
    return sub_100085f2Address
}

function sub_134a8703(?) {
    return sub_134a8703Address
}

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

function sub_3f701578(?) {
    return sub_3f701578
}

function sub_50d7d613(?) {
    return sub_50d7d613Address
}

function emergencyExit() {
    return bool(emergencyExit)
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

function sub_f7f13d88(?) {
    return sub_f7f13d88Address
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

function setEmergencyExit(bool arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor18 = Mask(96, 0, arg1)
}

function setSwapBPS(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        require msg.sender == strategistAddress
    sub_6add50ab = arg1
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

function sub_84e956b5(?) {
    require ext_code.size(sub_134a8703Address)
    call sub_134a8703Address.getPrices() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    sub_3f701578 = ext_call.return_data[32]
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

function sub_d5fc18ec(?) {
    require ext_code.size(address(sub_2a1b004fAddress))
    staticcall address(sub_2a1b004fAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function deposit() {
    require ext_code.size(sub_134a8703Address)
    call sub_134a8703Address.getPrices() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    sub_3f701578 = ext_call.return_data[32]
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_f7f13d88Address)
        call sub_f7f13d88Address.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(stor21), ext_call.return_data[0], this.address, block.timestamp + 60
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if ext_call.return_data[0] + principal < principal:
            revert with 0, 'SafeMath: addition overflow'
        principal += ext_call.return_data[0]
}

function getHarvestable() {
    require ext_code.size(address(sub_2a1b004fAddress))
    staticcall address(sub_2a1b004fAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    if address(sub_2a1b004fAddress) == arg1:
        revert with 0, 'bTAROT'
    if sub_100085f2Address == arg1:
        revert with 0, 'mToken'
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

function balanceOfPool() {
    require ext_code.size(address(sub_2a1b004fAddress))
    staticcall address(sub_2a1b004fAddress).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_2a1b004fAddress))
    staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.getRatio() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if 0 / sub_3f701578 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / sub_3f701578)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if 0 / sub_3f701578 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / sub_3f701578)
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_3f701578:
            revert with 0, 'SafeMath: division by zero'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(sub_100085f2Address)
    staticcall sub_100085f2Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    require ext_code.size(sub_100085f2Address)
    staticcall sub_100085f2Address.getRatio() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not sub_3f701578:
            revert with 0, 'SafeMath: division by zero'
        if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if not sub_3f701578:
            revert with 0, 'SafeMath: division by zero'
        if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not sub_3f701578:
        revert with 0, 'SafeMath: division by zero'
    if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
}

function figureOutPath(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if mmTokenAddress != arg2:
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
        _275 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _293 = mem[_275 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_275 + 192])] = mem[_275 + 224 len floor32(mem[_275 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _476 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _293) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _293) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _293) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _293) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _293) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _293) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _293) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _293) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _650 = mem[(32 * _293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _293) + ceil32(return_data.size) + mem[(32 * _293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _293) + ceil32(return_data.size) + mem[(32 * _293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _293) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _293) + ceil32(return_data.size) + mem[(32 * _293) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _659 = mem[(32 * _293) + ceil32(return_data.size) + _650 + 224]
        mem[(32 * _293) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _293) + ceil32(return_data.size) + _650 + 224])] = mem[(32 * _293) + ceil32(return_data.size) + _650 + 256 len floor32(mem[(32 * _293) + ceil32(return_data.size) + _650 + 224])]
        require 1 < mem[(32 * _293) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _659) + (32 * _293) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _476 > mem[(32 * _293) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _659) + (32 * _293) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _659) + (32 * _293) + (2 * ceil32(return_data.size)) + 352 len 64]
    if bool(buybackEnabled) != 1:
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
        _279 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _295 = mem[_279 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_279 + 192])] = mem[_279 + 224 len floor32(mem[_279 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _478 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _295) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _295) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _295) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _295) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _295) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _295) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _295) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _295) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _652 = mem[(32 * _295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _295) + ceil32(return_data.size) + mem[(32 * _295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _295) + ceil32(return_data.size) + mem[(32 * _295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _295) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _295) + ceil32(return_data.size) + mem[(32 * _295) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _660 = mem[(32 * _295) + ceil32(return_data.size) + _652 + 224]
        mem[(32 * _295) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _295) + ceil32(return_data.size) + _652 + 224])] = mem[(32 * _295) + ceil32(return_data.size) + _652 + 256 len floor32(mem[(32 * _295) + ceil32(return_data.size) + _652 + 224])]
        require 1 < mem[(32 * _295) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _660) + (32 * _295) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _478 > mem[(32 * _295) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _660) + (32 * _295) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _660) + (32 * _295) + (2 * ceil32(return_data.size)) + 352 len 64]
    mem[96] = 3
    mem[128] = arg1
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[192] = arg2
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = arg3
    mem[260] = 64
    mem[292] = 3
    mem[324 len 96] = address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, arg2
    require ext_code.size(sushiRouterAddress)
    staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=3, data=address(arg1), 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _283 = mem[224 len 4], Mask(224, 32, arg3) >> 32
    require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    _297 = mem[_283 + 224]
    mem[ceil32(return_data.size) + 256 len floor32(mem[_283 + 224])] = mem[_283 + 256 len floor32(mem[_283 + 224])]
    require 2 < mem[ceil32(return_data.size) + 224]
    _480 = mem[ceil32(return_data.size) + 320]
    mem[(32 * _297) + ceil32(return_data.size) + 256] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _297) + ceil32(return_data.size) + 260] = arg3
    mem[(32 * _297) + ceil32(return_data.size) + 292] = 64
    mem[(32 * _297) + ceil32(return_data.size) + 324] = 3
    mem[(32 * _297) + ceil32(return_data.size) + 356 len 0] = None
    require ext_code.size(univ2Router2Address)
    staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=3, data=mem[(32 * _297) + ceil32(return_data.size) + 356 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _297) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _297) + (2 * ceil32(return_data.size)) + 256
    require return_data.size >= 32
    _654 = mem[(32 * _297) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * _297) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _297) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[(32 * _297) + ceil32(return_data.size) + mem[(32 * _297) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _297) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _297) + ceil32(return_data.size) + mem[(32 * _297) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
    mem[(32 * _297) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _297) + ceil32(return_data.size) + mem[(32 * _297) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
    _661 = mem[(32 * _297) + ceil32(return_data.size) + _654 + 256]
    mem[(32 * _297) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _297) + ceil32(return_data.size) + _654 + 256])] = mem[(32 * _297) + ceil32(return_data.size) + _654 + 288 len floor32(mem[(32 * _297) + ceil32(return_data.size) + _654 + 256])]
    require 2 < mem[(32 * _297) + (2 * ceil32(return_data.size)) + 256]
    mem[(32 * _661) + (32 * _297) + (2 * ceil32(return_data.size)) + 384 len 0] = None
    if _480 > mem[(32 * _297) + (2 * ceil32(return_data.size)) + 352]:
        return 1, Array(len=3, data=mem[(32 * _661) + (32 * _297) + (2 * ceil32(return_data.size)) + 384 len 96])
    return 0, 64, 3, mem[(32 * _661) + (32 * _297) + (2 * ceil32(return_data.size)) + 384 len 96]
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
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_100085f2Address)
            staticcall sub_100085f2Address.balanceOf(address arg1) with:
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
            require ext_code.size(sub_100085f2Address)
            staticcall sub_100085f2Address.getRatio() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_3f701578:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sub_3f701578 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > (0 / sub_3f701578) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_3f701578) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                if not sub_3f701578:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sub_3f701578 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > (0 / sub_3f701578) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_3f701578) + ext_call.return_data[0])
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.balanceOf(address arg1) with:
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
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.getRatio() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_3f701578:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
    if sub_7b756553 <= 0:
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_100085f2Address)
            staticcall sub_100085f2Address.balanceOf(address arg1) with:
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
            require ext_code.size(sub_100085f2Address)
            staticcall sub_100085f2Address.getRatio() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_3f701578:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sub_3f701578 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > (0 / sub_3f701578) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_3f701578) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                if not sub_3f701578:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sub_3f701578 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > (0 / sub_3f701578) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_3f701578) + ext_call.return_data[0])
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.balanceOf(address arg1) with:
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
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.getRatio() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_3f701578:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
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
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_100085f2Address)
            staticcall sub_100085f2Address.balanceOf(address arg1) with:
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
            require ext_code.size(sub_100085f2Address)
            staticcall sub_100085f2Address.getRatio() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_3f701578:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sub_3f701578 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > (0 / sub_3f701578) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_3f701578) + ext_call.return_data[0])
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                if not sub_3f701578:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sub_3f701578 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 > (0 / sub_3f701578) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_3f701578) + ext_call.return_data[0])
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.balanceOf(address arg1) with:
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
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.getRatio() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not sub_3f701578:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0])
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
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_100085f2Address)
            staticcall sub_100085f2Address.balanceOf(address arg1) with:
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
            require ext_code.size(sub_100085f2Address)
            staticcall sub_100085f2Address.getRatio() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_3f701578:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sub_3f701578 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / sub_5d158350 / 10^18 > (0 / sub_3f701578) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_3f701578) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                if not sub_3f701578:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sub_3f701578 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / sub_5d158350 / 10^18 > (0 / sub_3f701578) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_3f701578) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.balanceOf(address arg1) with:
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
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.getRatio() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not sub_3f701578:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / sub_5d158350 / 10^18 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
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
        require ext_code.size(address(sub_2a1b004fAddress))
        staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_100085f2Address)
            staticcall sub_100085f2Address.balanceOf(address arg1) with:
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
            require ext_code.size(sub_100085f2Address)
            staticcall sub_100085f2Address.getRatio() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not sub_3f701578:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sub_3f701578 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / sub_5d158350 / 10^18 > (0 / sub_3f701578) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_3f701578) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                if not sub_3f701578:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / sub_3f701578 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require ext_code.size(wantAddress)
                staticcall wantAddress.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (0 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 / sub_5d158350 / 10^18 > (0 / sub_3f701578) + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((0 / sub_3f701578) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.balanceOf(address arg1) with:
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
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.getRatio() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 / sub_5d158350 / 10^18 > (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not sub_3f701578:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / sub_5d158350 / 10^18 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - (0 / sub_5d158350 / 10^18))
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
    require ext_code.size(address(sub_2a1b004fAddress))
    staticcall address(sub_2a1b004fAddress).exchangeRateLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.balanceOf(address arg1) with:
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
        require ext_code.size(sub_100085f2Address)
        staticcall sub_100085f2Address.getRatio() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if 0 / sub_3f701578 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > (0 / sub_3f701578) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_3f701578) + ext_call.return_data[0] - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            if not sub_3f701578:
                revert with 0, 'SafeMath: division by zero'
            if 0 / sub_3f701578 < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (0 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > (0 / sub_3f701578) + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / sub_3f701578) + ext_call.return_data[0] - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not sub_3f701578:
            revert with 0, 'SafeMath: division by zero'
        if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578 < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + ext_call.return_data[0] - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    require ext_code.size(sub_100085f2Address)
    staticcall sub_100085f2Address.balanceOf(address arg1) with:
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
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
    require ext_code.size(sub_100085f2Address)
    staticcall sub_100085f2Address.getRatio() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not sub_3f701578:
            revert with 0, 'SafeMath: division by zero'
        if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        if not sub_3f701578:
            revert with 0, 'SafeMath: division by zero'
        if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > (0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
    if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if not sub_3f701578:
        revert with 0, 'SafeMath: division by zero'
    if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / sub_3f701578) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
}



}
