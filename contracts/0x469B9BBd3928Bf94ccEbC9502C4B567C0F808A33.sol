contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#  - harvest()
#
const getHarvestable = ext_call.return_data[0]

const balanceOfPool = ext_call.return_data[0]

const devFundMax = 100000

const treasuryMax = 100000

const getName = 'ritFtmLpV2'

const sub_29b5478a(?) = 0x30748322b6e34545dbe0788c421886aeb5297789

const sub_2d2e3a93(?) = 0x5cc61a78f164885776aa610fb0fe1257df78e59b

const sub_6a0f3a10(?) = 0xefe02cb895b6e061fa227de683c04f3ce19f3a62

const performanceMax = 100000

const sub_a0dbb829(?) = 10000

const sub_c2af6b58(?) = 0x5cc61a78f164885776aa610fb0fe1257df78e59b

const WFTM = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 performanceFee;
uint256 treasuryFee;
uint256 devFundFee;
uint256 sub_5d158350;
uint256 sub_14b74d9a;
uint256 sub_7b756553;
uint8 stor8;
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
uint256 sub_6add50ab;

function sub_14b74d9a(?) payable {
    return sub_14b74d9a
}

function buybackEnabled() payable {
    return bool(stor8)
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function whiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function sub_50d7d613(?) payable {
    return sub_50d7d613Address
}

function emergencyExit() payable {
    return bool(emergencyExit)
}

function masterChef() payable {
    return masterChefAddress
}

function governance() payable {
    return governanceAddress
}

function sub_5d158350(?) payable {
    return sub_5d158350
}

function sub_6add50ab(?) payable {
    return sub_6add50ab
}

function sushiRouter() payable {
    return sushiRouterAddress
}

function sub_7b756553(?) payable {
    return sub_7b756553
}

function performanceFee() payable {
    return performanceFee
}

function sub_8ed8ea7e(?) payable {
    return sub_8ed8ea7eAddress
}

function mmToken() payable {
    return mmTokenAddress
}

function devFundFee() payable {
    return devFundFee
}

function univ2Router2() payable {
    return univ2Router2Address
}

function treasuryFee() payable {
    return treasuryFee
}

function timelock() payable {
    return timelockAddress
}

function sub_e13f8513(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function controller() payable {
    return address(controllerAddress)
}

function _fallback() payable {
    revert
}

function setDevFundFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    devFundFee = arg1
}

function sub_60bc488b(?) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_8ed8ea7eAddress = arg1
}

function sub_caa26ca7(?) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_50d7d613Address = arg1
}

function setTreasuryFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    treasuryFee = arg1
}

function setTimelock(address arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    timelockAddress = arg1
}

function setMmToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    mmTokenAddress = arg1
}

function setBuybackEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor8 = uint8(arg1)
}

function setPerformanceFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    performanceFee = arg1
}

function setUniRoute(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    univ2Router2Address = arg1
}

function setMasterChef(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    masterChefAddress = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategistAddress = arg1
}

function setSushiRoute(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sushiRouterAddress = arg1
}

function setEmergencyExit(bool arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor18 = Mask(96, 0, arg1)
}

function setSwapBPS(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        require msg.sender == strategistAddress
    sub_6add50ab = arg1
}

function setDelayBlockRequired(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_5d158350 = arg1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    address(controllerAddress) = arg1
}

function setWhiteList(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor0[address(arg1)] = uint8(arg2)
}

function setBenignCallers(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor1[address(arg1)] = uint8(arg2)
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function deposit() payable {
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

function withdraw(address arg1) payable {
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
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor12)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor12):
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

function withdrawAll() payable {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if emergencyExit:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
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
        mem[132] = ext_call.return_data[12 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call wantAddress.mem[160 len 4] with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    else:
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
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).vaults(address arg1) with:
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

function balanceOf() payable {
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

function figureOutPath(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if mmTokenAddress != arg2:
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
            _730 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _778 = mem[_730 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_730 + 192])] = mem[_730 + 224 len floor32(mem[_730 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _1266 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _778) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _778) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _778) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _778) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _778) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _778) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _778) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _778) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _1730 = mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _778) + ceil32(return_data.size) + mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _778) + ceil32(return_data.size) + mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _778) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _778) + ceil32(return_data.size) + mem[(32 * _778) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _1754 = mem[(32 * _778) + ceil32(return_data.size) + _1730 + 224]
            mem[(32 * _778) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _778) + ceil32(return_data.size) + _1730 + 224])] = mem[(32 * _778) + ceil32(return_data.size) + _1730 + 256 len floor32(mem[(32 * _778) + ceil32(return_data.size) + _1730 + 224])]
            require 1 < mem[(32 * _778) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _1754) + (32 * _778) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _1266 > mem[(32 * _778) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _1754) + (32 * _778) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _1754) + (32 * _778) + (2 * ceil32(return_data.size)) + 352 len 64]
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
            _738 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _782 = mem[_738 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_738 + 192])] = mem[_738 + 224 len floor32(mem[_738 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _1270 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _782) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _782) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _782) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _782) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _782) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _782) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _782) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _782) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _1734 = mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _782) + ceil32(return_data.size) + mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _782) + ceil32(return_data.size) + mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _782) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _782) + ceil32(return_data.size) + mem[(32 * _782) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _1756 = mem[(32 * _782) + ceil32(return_data.size) + _1734 + 224]
            mem[(32 * _782) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _782) + ceil32(return_data.size) + _1734 + 224])] = mem[(32 * _782) + ceil32(return_data.size) + _1734 + 256 len floor32(mem[(32 * _782) + ceil32(return_data.size) + _1734 + 224])]
            require 1 < mem[(32 * _782) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _1756) + (32 * _782) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _1270 > mem[(32 * _782) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _1756) + (32 * _782) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _1756) + (32 * _782) + (2 * ceil32(return_data.size)) + 352 len 64]
        if mem[96] <= 0:
            if mem[96] <= 0:
                return 0, 64, 0
            mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[100] = arg3
            mem[132] = 64
            mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _736 = mem[96 len 4], Mask(224, 32, arg3) >> 32
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
            _781 = mem[_736 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_736 + 96])] = mem[_736 + 128 len floor32(mem[_736 + 96])]
            mem[64] = (32 * _781) + ceil32(return_data.size) + 128
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
            if 0 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]:
                mem[(32 * _781) + ceil32(return_data.size) + 128] = 1
            else:
                mem[(32 * _781) + ceil32(return_data.size) + 128] = 0
            mem[(32 * _781) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _781) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
            mem[(32 * _781) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
            return memory
              from (32 * _781) + ceil32(return_data.size) + 128
               len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
        mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        mem[132] = 64
        mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _734 = mem[96 len 4], Mask(224, 32, arg3) >> 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
        _780 = mem[_734 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_734 + 96])] = mem[_734 + 128 len floor32(mem[_734 + 96])]
        mem[64] = (32 * _780) + ceil32(return_data.size) + 128
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
        _1268 = mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]
        if mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 0:
            if mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128] > 1:
                mem[(32 * _780) + ceil32(return_data.size) + 128] = 1
            else:
                mem[(32 * _780) + ceil32(return_data.size) + 128] = 0
            mem[(32 * _780) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _780) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
            mem[(32 * _780) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
            return memory
              from (32 * _780) + ceil32(return_data.size) + 128
               len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
        mem[(32 * _780) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _780) + ceil32(return_data.size) + 132] = arg3
        mem[(32 * _780) + ceil32(return_data.size) + 164] = 64
        mem[(32 * _780) + ceil32(return_data.size) + 196] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _780) + ceil32(return_data.size) + 228 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(32 * _780) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _780) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _780) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _1732 = mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _780) + ceil32(return_data.size) + mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] <= 4294967296 and mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _780) + ceil32(return_data.size) + mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 32 <= return_data.size
        mem[(32 * _780) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _780) + ceil32(return_data.size) + mem[(32 * _780) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
        _1755 = mem[(32 * _780) + ceil32(return_data.size) + _1732 + 128]
        mem[(32 * _780) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _780) + ceil32(return_data.size) + _1732 + 128])] = mem[(32 * _780) + ceil32(return_data.size) + _1732 + 160 len floor32(mem[(32 * _780) + ceil32(return_data.size) + _1732 + 128])]
        mem[64] = (32 * _1755) + (32 * _780) + (2 * ceil32(return_data.size)) + 160
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[(32 * _780) + (2 * ceil32(return_data.size)) + 128]
        if _1268 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + (32 * _780) + (2 * ceil32(return_data.size)) + 160]:
            mem[(32 * _1755) + (32 * _780) + (2 * ceil32(return_data.size)) + 160] = 1
        else:
            mem[(32 * _1755) + (32 * _780) + (2 * ceil32(return_data.size)) + 160] = 0
        mem[(32 * _1755) + (32 * _780) + (2 * ceil32(return_data.size)) + 192] = 64
        mem[(32 * _1755) + (32 * _780) + (2 * ceil32(return_data.size)) + 224] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _1755) + (32 * _780) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        return memory
          from (32 * _1755) + (32 * _780) + (2 * ceil32(return_data.size)) + 160
           len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
    if 1 == bool(stor8):
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
            _758 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _792 = mem[_758 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_758 + 192])] = mem[_758 + 224 len floor32(mem[_758 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _1280 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _792) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _792) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _792) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _792) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _792) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _792) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _792) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _792) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _1744 = mem[(32 * _792) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _792) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _792) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _792) + ceil32(return_data.size) + mem[(32 * _792) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _792) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _792) + ceil32(return_data.size) + mem[(32 * _792) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _792) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _792) + ceil32(return_data.size) + mem[(32 * _792) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            _1761 = mem[(32 * _792) + ceil32(return_data.size) + _1744 + 224]
            mem[(32 * _792) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _792) + ceil32(return_data.size) + _1744 + 224])] = mem[(32 * _792) + ceil32(return_data.size) + _1744 + 256 len floor32(mem[(32 * _792) + ceil32(return_data.size) + _1744 + 224])]
            require 1 < mem[(32 * _792) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _1761) + (32 * _792) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _1280 > mem[(32 * _792) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _1761) + (32 * _792) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _1761) + (32 * _792) + (2 * ceil32(return_data.size)) + 352 len 64]
        if mem[96] <= 0:
            if mem[96] <= 0:
                return 0, 64, 0
            mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[100] = arg3
            mem[132] = 64
            mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _756 = mem[96 len 4], Mask(224, 32, arg3) >> 32
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
            _791 = mem[_756 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_756 + 96])] = mem[_756 + 128 len floor32(mem[_756 + 96])]
            mem[64] = (32 * _791) + ceil32(return_data.size) + 128
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
            if 0 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]:
                mem[(32 * _791) + ceil32(return_data.size) + 128] = 1
            else:
                mem[(32 * _791) + ceil32(return_data.size) + 128] = 0
            mem[(32 * _791) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _791) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
            mem[(32 * _791) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
            return memory
              from (32 * _791) + ceil32(return_data.size) + 128
               len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
        mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        mem[132] = 64
        mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _754 = mem[96 len 4], Mask(224, 32, arg3) >> 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
        _790 = mem[_754 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_754 + 96])] = mem[_754 + 128 len floor32(mem[_754 + 96])]
        mem[64] = (32 * _790) + ceil32(return_data.size) + 128
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
        _1278 = mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]
        if mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 0:
            if mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128] > 1:
                mem[(32 * _790) + ceil32(return_data.size) + 128] = 1
            else:
                mem[(32 * _790) + ceil32(return_data.size) + 128] = 0
            mem[(32 * _790) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _790) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
            mem[(32 * _790) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
            return memory
              from (32 * _790) + ceil32(return_data.size) + 128
               len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
        mem[(32 * _790) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _790) + ceil32(return_data.size) + 132] = arg3
        mem[(32 * _790) + ceil32(return_data.size) + 164] = 64
        mem[(32 * _790) + ceil32(return_data.size) + 196] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _790) + ceil32(return_data.size) + 228 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(32 * _790) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _790) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _790) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _1742 = mem[(32 * _790) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _790) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _790) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _790) + ceil32(return_data.size) + mem[(32 * _790) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] <= 4294967296 and mem[(32 * _790) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _790) + ceil32(return_data.size) + mem[(32 * _790) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 32 <= return_data.size
        mem[(32 * _790) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _790) + ceil32(return_data.size) + mem[(32 * _790) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
        _1760 = mem[(32 * _790) + ceil32(return_data.size) + _1742 + 128]
        mem[(32 * _790) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _790) + ceil32(return_data.size) + _1742 + 128])] = mem[(32 * _790) + ceil32(return_data.size) + _1742 + 160 len floor32(mem[(32 * _790) + ceil32(return_data.size) + _1742 + 128])]
        mem[64] = (32 * _1760) + (32 * _790) + (2 * ceil32(return_data.size)) + 160
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[(32 * _790) + (2 * ceil32(return_data.size)) + 128]
        if _1278 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + (32 * _790) + (2 * ceil32(return_data.size)) + 160]:
            mem[(32 * _1760) + (32 * _790) + (2 * ceil32(return_data.size)) + 160] = 1
        else:
            mem[(32 * _1760) + (32 * _790) + (2 * ceil32(return_data.size)) + 160] = 0
        mem[(32 * _1760) + (32 * _790) + (2 * ceil32(return_data.size)) + 192] = 64
        mem[(32 * _1760) + (32 * _790) + (2 * ceil32(return_data.size)) + 224] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _1760) + (32 * _790) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        return memory
          from (32 * _1760) + (32 * _790) + (2 * ceil32(return_data.size)) + 160
           len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
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
        _742 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _784 = mem[_742 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_742 + 192])] = mem[_742 + 224 len floor32(mem[_742 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _1272 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _784) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _784) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _784) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _784) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _784) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _784) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _784) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _784) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _1736 = mem[(32 * _784) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _784) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _784) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _784) + ceil32(return_data.size) + mem[(32 * _784) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _784) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _784) + ceil32(return_data.size) + mem[(32 * _784) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _784) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _784) + ceil32(return_data.size) + mem[(32 * _784) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _1757 = mem[(32 * _784) + ceil32(return_data.size) + _1736 + 224]
        mem[(32 * _784) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _784) + ceil32(return_data.size) + _1736 + 224])] = mem[(32 * _784) + ceil32(return_data.size) + _1736 + 256 len floor32(mem[(32 * _784) + ceil32(return_data.size) + _1736 + 224])]
        require 1 < mem[(32 * _784) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _1757) + (32 * _784) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _1272 > mem[(32 * _784) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _1757) + (32 * _784) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _1757) + (32 * _784) + (2 * ceil32(return_data.size)) + 352 len 64]
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
        _750 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _788 = mem[_750 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_750 + 192])] = mem[_750 + 224 len floor32(mem[_750 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _1276 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _788) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _788) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _788) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _788) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _788) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _788) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _788) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _788) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _1740 = mem[(32 * _788) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _788) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _788) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _788) + ceil32(return_data.size) + mem[(32 * _788) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[(32 * _788) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _788) + ceil32(return_data.size) + mem[(32 * _788) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[(32 * _788) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _788) + ceil32(return_data.size) + mem[(32 * _788) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _1759 = mem[(32 * _788) + ceil32(return_data.size) + _1740 + 224]
        mem[(32 * _788) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _788) + ceil32(return_data.size) + _1740 + 224])] = mem[(32 * _788) + ceil32(return_data.size) + _1740 + 256 len floor32(mem[(32 * _788) + ceil32(return_data.size) + _1740 + 224])]
        require 1 < mem[(32 * _788) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _1759) + (32 * _788) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _1276 > mem[(32 * _788) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _1759) + (32 * _788) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _1759) + (32 * _788) + (2 * ceil32(return_data.size)) + 352 len 64]
    if mem[96] <= 0:
        if mem[96] <= 0:
            return 0, 64, 0
        mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        mem[132] = 64
        mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _748 = mem[96 len 4], Mask(224, 32, arg3) >> 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
        _787 = mem[_748 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_748 + 96])] = mem[_748 + 128 len floor32(mem[_748 + 96])]
        mem[64] = (32 * _787) + ceil32(return_data.size) + 128
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
        if 0 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]:
            mem[(32 * _787) + ceil32(return_data.size) + 128] = 1
        else:
            mem[(32 * _787) + ceil32(return_data.size) + 128] = 0
        mem[(32 * _787) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _787) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _787) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        return memory
          from (32 * _787) + ceil32(return_data.size) + 128
           len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg3
    mem[132] = 64
    mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
    require ext_code.size(sushiRouterAddress)
    staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _746 = mem[96 len 4], Mask(224, 32, arg3) >> 32
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
    _786 = mem[_746 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_746 + 96])] = mem[_746 + 128 len floor32(mem[_746 + 96])]
    mem[64] = (32 * _786) + ceil32(return_data.size) + 128
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
    _1274 = mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]
    if mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 0:
        if mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128] > 1:
            mem[(32 * _786) + ceil32(return_data.size) + 128] = 1
        else:
            mem[(32 * _786) + ceil32(return_data.size) + 128] = 0
        mem[(32 * _786) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _786) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _786) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        return memory
          from (32 * _786) + ceil32(return_data.size) + 128
           len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
    mem[(32 * _786) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _786) + ceil32(return_data.size) + 132] = arg3
    mem[(32 * _786) + ceil32(return_data.size) + 164] = 64
    mem[(32 * _786) + ceil32(return_data.size) + 196] = mem[96 len 4], Mask(224, 32, arg3) >> 32
    mem[(32 * _786) + ceil32(return_data.size) + 228 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
    require ext_code.size(univ2Router2Address)
    staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[(32 * _786) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _786) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _786) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _1738 = mem[(32 * _786) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * _786) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _786) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[(32 * _786) + ceil32(return_data.size) + mem[(32 * _786) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] <= 4294967296 and mem[(32 * _786) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _786) + ceil32(return_data.size) + mem[(32 * _786) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 32 <= return_data.size
    mem[(32 * _786) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _786) + ceil32(return_data.size) + mem[(32 * _786) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
    _1758 = mem[(32 * _786) + ceil32(return_data.size) + _1738 + 128]
    mem[(32 * _786) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _786) + ceil32(return_data.size) + _1738 + 128])] = mem[(32 * _786) + ceil32(return_data.size) + _1738 + 160 len floor32(mem[(32 * _786) + ceil32(return_data.size) + _1738 + 128])]
    mem[64] = (32 * _1758) + (32 * _786) + (2 * ceil32(return_data.size)) + 160
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[(32 * _786) + (2 * ceil32(return_data.size)) + 128]
    if _1274 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + (32 * _786) + (2 * ceil32(return_data.size)) + 160]:
        mem[(32 * _1758) + (32 * _786) + (2 * ceil32(return_data.size)) + 160] = 1
    else:
        mem[(32 * _1758) + (32 * _786) + (2 * ceil32(return_data.size)) + 160] = 0
    mem[(32 * _1758) + (32 * _786) + (2 * ceil32(return_data.size)) + 192] = 64
    mem[(32 * _1758) + (32 * _786) + (2 * ceil32(return_data.size)) + 224] = mem[96 len 4], Mask(224, 32, arg3) >> 32
    mem[(32 * _1758) + (32 * _786) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
    return memory
      from (32 * _1758) + (32 * _786) + (2 * ceil32(return_data.size)) + 160
       len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
}



}
