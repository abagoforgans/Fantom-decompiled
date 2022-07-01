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

const getName = 'StrategyCrv3cryptoV1'

const sub_2b9d5cc9(?) = 0x58e57ca18b7a47112b877e31929798cd3d703b0f

const sub_34c0d442(?) = 0x702bbdead24c40647f235f15971db0867f6bdb

const fUSDT = 0x49d68029688eabf473097a2fc38ef61633a3c7a

const weth = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const performanceMax = 100000

const sub_c32b2b51(?) = 0xe41d2489571d322189246dafa5ebde1f4699f498

const sub_c8968f75(?) = 0x3a1659ddcf2339be3aea159ca010979fb49155ff

const WFTM = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


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

function masterChef() payable {
    return masterChefAddress
}

function governance() payable {
    return governanceAddress
}

function sub_5d158350(?) payable {
    return sub_5d158350
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
    require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
    staticcall 0x58e57ca18b7a47112b877e31929798cd3d703b0f.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0x702bbdead24c40647f235f15971db0867f6bdb)
        call 0x00702bbdead24c40647f235f15971db0867f6bdb.0xb6b55f25 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 == 0x49d68029688eabf473097a2fc38ef61633a3c7a:
        revert with 0, '!fUSDT'
    if arg1 == 0x58e57ca18b7a47112b877e31929798cd3d703b0f:
        revert with 0, '!lpToken'
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
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
    return ext_call.return_data[0]
}

function withdrawAll() payable {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
    staticcall 0x58e57ca18b7a47112b877e31929798cd3d703b0f.0x70a08231 with:
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
    if not ext_call.return_data[0]:
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
        if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        mem[324 len 0] = 0
        call wantAddress.mem[160 len 4] with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, ext_call.return_data[12 len 20], ext_call.return_data[0]
            if not 0, mem[132 len 28]:
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
        require ext_code.size(0x702bbdead24c40647f235f15971db0867f6bdb)
        call 0x00702bbdead24c40647f235f15971db0867f6bdb.0x2e1a7d4d with:
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
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
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
        mem[196] = ext_call.return_data[12 len 20]
        if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        call wantAddress.mem[224 len 4] with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
    return ext_call.return_data[0]
}

function balanceOf() payable {
    if sub_5d158350 <= 0:
        require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
        staticcall 0x58e57ca18b7a47112b877e31929798cd3d703b0f.0x70a08231 with:
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
        require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
        staticcall 0x58e57ca18b7a47112b877e31929798cd3d703b0f.0x70a08231 with:
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
        require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
        staticcall 0x58e57ca18b7a47112b877e31929798cd3d703b0f.0x70a08231 with:
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
    if sub_14b74d9a + sub_5d158350 < sub_14b74d9a:
        revert with 0, 'SafeMath: addition overflow'
    if block.number > sub_14b74d9a + sub_5d158350:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_7b756553:
        if sub_5d158350 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5d158350
        require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
        staticcall 0x58e57ca18b7a47112b877e31929798cd3d703b0f.0x70a08231 with:
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
    require sub_7b756553
    if (sub_14b74d9a * sub_7b756553) + (sub_5d158350 * sub_7b756553) - (block.number * sub_7b756553) / sub_7b756553 != sub_14b74d9a + sub_5d158350 - block.number:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (sub_14b74d9a * sub_7b756553) + (sub_5d158350 * sub_7b756553) - (block.number * sub_7b756553):
        if sub_5d158350 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_5d158350
        require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
        staticcall 0x58e57ca18b7a47112b877e31929798cd3d703b0f.0x70a08231 with:
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
    require (sub_14b74d9a * sub_7b756553) + (sub_5d158350 * sub_7b756553) - (block.number * sub_7b756553)
    if (10^18 * sub_14b74d9a * sub_7b756553) + (10^18 * sub_5d158350 * sub_7b756553) - (10^18 * block.number * sub_7b756553) / (sub_14b74d9a * sub_7b756553) + (sub_5d158350 * sub_7b756553) - (block.number * sub_7b756553) != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if sub_5d158350 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_5d158350
    require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
    staticcall 0x58e57ca18b7a47112b877e31929798cd3d703b0f.0x70a08231 with:
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
    if (10^18 * sub_14b74d9a * sub_7b756553) + (10^18 * sub_5d158350 * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((2 * ext_call.return_data[0]) - ((10^18 * sub_14b74d9a * sub_7b756553) + (10^18 * sub_5d158350 * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
}

function figureOutPath(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 != mmTokenAddress:
        if arg1 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
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
            _1111 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1183 = mem[_1111 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1111 + 192])] = mem[_1111 + 224 len floor32(mem[_1111 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _1915 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1183) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1183) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1183) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1183) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1183) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1183) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1183) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1183) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _2611 = mem[(32 * _1183) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1183) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1183) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _1183) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1183) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1183) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1183) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1183) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
            mem[(32 * _1183) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1183) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1183) + ceil32(return_data.size) + 224]
            _2647 = mem[_2611 + (32 * _1183) + ceil32(return_data.size) + 224]
            mem[(32 * _1183) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_2611 + (32 * _1183) + ceil32(return_data.size) + 224])] = mem[_2611 + (32 * _1183) + ceil32(return_data.size) + 256 len floor32(mem[_2611 + (32 * _1183) + ceil32(return_data.size) + 224])]
            require 1 < mem[(32 * _1183) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _2647) + (32 * _1183) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _1915 > mem[(32 * _1183) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _2647) + (32 * _1183) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _2647) + (32 * _1183) + (2 * ceil32(return_data.size)) + 352 len 64]
        if arg2 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
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
            _1115 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1185 = mem[_1115 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1115 + 192])] = mem[_1115 + 224 len floor32(mem[_1115 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _1917 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1185) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1185) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1185) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1185) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1185) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1185) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1185) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1185) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _2613 = mem[(32 * _1185) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1185) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1185) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _1185) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1185) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1185) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1185) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1185) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
            mem[(32 * _1185) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1185) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1185) + ceil32(return_data.size) + 224]
            _2648 = mem[_2613 + (32 * _1185) + ceil32(return_data.size) + 224]
            mem[(32 * _1185) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_2613 + (32 * _1185) + ceil32(return_data.size) + 224])] = mem[_2613 + (32 * _1185) + ceil32(return_data.size) + 256 len floor32(mem[_2613 + (32 * _1185) + ceil32(return_data.size) + 224])]
            require 1 < mem[(32 * _1185) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _2648) + (32 * _1185) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _1917 > mem[(32 * _1185) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _2648) + (32 * _1185) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _2648) + (32 * _1185) + (2 * ceil32(return_data.size)) + 352 len 64]
        if arg1 == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
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
            _1119 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1187 = mem[_1119 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1119 + 192])] = mem[_1119 + 224 len floor32(mem[_1119 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _1919 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1187) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1187) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1187) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1187) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1187) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1187) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1187) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1187) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _2615 = mem[(32 * _1187) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1187) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1187) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _1187) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1187) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1187) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1187) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1187) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
            mem[(32 * _1187) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1187) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1187) + ceil32(return_data.size) + 224]
            _2649 = mem[_2615 + (32 * _1187) + ceil32(return_data.size) + 224]
            mem[(32 * _1187) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_2615 + (32 * _1187) + ceil32(return_data.size) + 224])] = mem[_2615 + (32 * _1187) + ceil32(return_data.size) + 256 len floor32(mem[_2615 + (32 * _1187) + ceil32(return_data.size) + 224])]
            require 1 < mem[(32 * _1187) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _2649) + (32 * _1187) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _1919 > mem[(32 * _1187) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _2649) + (32 * _1187) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _2649) + (32 * _1187) + (2 * ceil32(return_data.size)) + 352 len 64]
        if arg2 == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
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
            _1127 = mem[192 len 4], Mask(224, 32, arg3) >> 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            _1191 = mem[_1127 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_1127 + 192])] = mem[_1127 + 224 len floor32(mem[_1127 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _1923 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _1191) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1191) + ceil32(return_data.size) + 228] = arg3
            mem[(32 * _1191) + ceil32(return_data.size) + 260] = 64
            mem[(32 * _1191) + ceil32(return_data.size) + 292] = 2
            mem[(32 * _1191) + ceil32(return_data.size) + 324 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _1191) + ceil32(return_data.size) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1191) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1191) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _2619 = mem[(32 * _1191) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1191) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1191) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _1191) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1191) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1191) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1191) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1191) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
            mem[(32 * _1191) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1191) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1191) + ceil32(return_data.size) + 224]
            _2651 = mem[_2619 + (32 * _1191) + ceil32(return_data.size) + 224]
            mem[(32 * _1191) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_2619 + (32 * _1191) + ceil32(return_data.size) + 224])] = mem[_2619 + (32 * _1191) + ceil32(return_data.size) + 256 len floor32(mem[_2619 + (32 * _1191) + ceil32(return_data.size) + 224])]
            require 1 < mem[(32 * _1191) + (2 * ceil32(return_data.size)) + 224]
            mem[(32 * _2651) + (32 * _1191) + (2 * ceil32(return_data.size)) + 352 len 0] = None
            if _1923 > mem[(32 * _1191) + (2 * ceil32(return_data.size)) + 288]:
                return 1, Array(len=2, data=mem[(32 * _2651) + (32 * _1191) + (2 * ceil32(return_data.size)) + 352 len 64])
            return 0, 64, 2, mem[(32 * _2651) + (32 * _1191) + (2 * ceil32(return_data.size)) + 352 len 64]
        mem[96] = 3
        mem[128] = arg1
        mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        mem[192] = arg2
        mem[224] = 3
        mem[256] = arg1
        mem[288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
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
        _1123 = mem[352 len 4], Mask(224, 32, arg3) >> 32
        require mem[352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352] <= 4294967296 and mem[352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352]
        _1189 = mem[_1123 + 352]
        mem[ceil32(return_data.size) + 384 len floor32(mem[_1123 + 352])] = mem[_1123 + 384 len floor32(mem[_1123 + 352])]
        require 2 < mem[ceil32(return_data.size) + 352]
        _1921 = mem[ceil32(return_data.size) + 448]
        mem[(32 * _1189) + ceil32(return_data.size) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _1189) + ceil32(return_data.size) + 388] = arg3
        mem[(32 * _1189) + ceil32(return_data.size) + 420] = 64
        mem[(32 * _1189) + ceil32(return_data.size) + 452] = 3
        mem[(32 * _1189) + ceil32(return_data.size) + 484 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[(32 * _1189) + ceil32(return_data.size) + 484 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1189) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1189) + (2 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _2617 = mem[(32 * _1189) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _1189) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _1189) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _1189) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1189) + ceil32(return_data.size) + 384] <= 4294967296 and mem[(32 * _1189) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1189) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1189) + ceil32(return_data.size) + 384]) + 32 <= return_data.size
        mem[(32 * _1189) + (2 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _1189) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1189) + ceil32(return_data.size) + 384]
        _2650 = mem[_2617 + (32 * _1189) + ceil32(return_data.size) + 384]
        mem[(32 * _1189) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_2617 + (32 * _1189) + ceil32(return_data.size) + 384])] = mem[_2617 + (32 * _1189) + ceil32(return_data.size) + 416 len floor32(mem[_2617 + (32 * _1189) + ceil32(return_data.size) + 384])]
        require 2 < mem[(32 * _1189) + (2 * ceil32(return_data.size)) + 384]
        mem[(32 * _2650) + (32 * _1189) + (2 * ceil32(return_data.size)) + 512 len 0] = None
        if _1921 > mem[(32 * _1189) + (2 * ceil32(return_data.size)) + 480]:
            return 1, Array(len=3, data=mem[(32 * _2650) + (32 * _1189) + (2 * ceil32(return_data.size)) + 512 len 96])
        return 0, 64, 3, mem[(32 * _2650) + (32 * _1189) + (2 * ceil32(return_data.size)) + 512 len 96]
    if bool(stor8) == 1:
        if arg1 != 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
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
            _1151 = mem[352 len 4], Mask(224, 32, arg3) >> 32
            require mem[352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352] <= 4294967296 and mem[352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352]
            _1203 = mem[_1151 + 352]
            mem[ceil32(return_data.size) + 384 len floor32(mem[_1151 + 352])] = mem[_1151 + 384 len floor32(mem[_1151 + 352])]
            require 2 < mem[ceil32(return_data.size) + 352]
            _1935 = mem[ceil32(return_data.size) + 448]
            mem[(32 * _1203) + ceil32(return_data.size) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1203) + ceil32(return_data.size) + 388] = arg3
            mem[(32 * _1203) + ceil32(return_data.size) + 420] = 64
            mem[(32 * _1203) + ceil32(return_data.size) + 452] = 3
            mem[(32 * _1203) + ceil32(return_data.size) + 484 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=3, data=mem[(32 * _1203) + ceil32(return_data.size) + 484 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1203) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1203) + (2 * ceil32(return_data.size)) + 384
            require return_data.size >= 32
            _2631 = mem[(32 * _1203) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _1203) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _1203) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _1203) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1203) + ceil32(return_data.size) + 384] <= 4294967296 and mem[(32 * _1203) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1203) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1203) + ceil32(return_data.size) + 384]) + 32 <= return_data.size
            mem[(32 * _1203) + (2 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _1203) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1203) + ceil32(return_data.size) + 384]
            _2657 = mem[_2631 + (32 * _1203) + ceil32(return_data.size) + 384]
            mem[(32 * _1203) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_2631 + (32 * _1203) + ceil32(return_data.size) + 384])] = mem[_2631 + (32 * _1203) + ceil32(return_data.size) + 416 len floor32(mem[_2631 + (32 * _1203) + ceil32(return_data.size) + 384])]
            require 2 < mem[(32 * _1203) + (2 * ceil32(return_data.size)) + 384]
            mem[(32 * _2657) + (32 * _1203) + (2 * ceil32(return_data.size)) + 512 len 0] = None
            if _1935 > mem[(32 * _1203) + (2 * ceil32(return_data.size)) + 480]:
                return 1, Array(len=3, data=mem[(32 * _2657) + (32 * _1203) + (2 * ceil32(return_data.size)) + 512 len 96])
            return 0, 64, 3, mem[(32 * _2657) + (32 * _1203) + (2 * ceil32(return_data.size)) + 512 len 96]
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
        _1155 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _1205 = mem[_1155 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_1155 + 288])] = mem[_1155 + 320 len floor32(mem[_1155 + 288])]
        require 1 < mem[ceil32(return_data.size) + 288]
        _1937 = mem[ceil32(return_data.size) + 352]
        mem[(32 * _1205) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _1205) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _1205) + ceil32(return_data.size) + 356] = 64
        mem[(32 * _1205) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _1205) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _1205) + ceil32(return_data.size) + 420 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1205) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1205) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _2633 = mem[(32 * _1205) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _1205) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _1205) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _1205) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1205) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _1205) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1205) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1205) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
        mem[(32 * _1205) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _1205) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1205) + ceil32(return_data.size) + 320]
        _2658 = mem[_2633 + (32 * _1205) + ceil32(return_data.size) + 320]
        mem[(32 * _1205) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_2633 + (32 * _1205) + ceil32(return_data.size) + 320])] = mem[_2633 + (32 * _1205) + ceil32(return_data.size) + 352 len floor32(mem[_2633 + (32 * _1205) + ceil32(return_data.size) + 320])]
        require 1 < mem[(32 * _1205) + (2 * ceil32(return_data.size)) + 320]
        mem[(32 * _2658) + (32 * _1205) + (2 * ceil32(return_data.size)) + 448 len 0] = None
        if _1937 > mem[(32 * _1205) + (2 * ceil32(return_data.size)) + 384]:
            return 1, Array(len=2, data=mem[(32 * _2658) + (32 * _1205) + (2 * ceil32(return_data.size)) + 448 len 64])
        return 0, 64, 2, mem[(32 * _2658) + (32 * _1205) + (2 * ceil32(return_data.size)) + 448 len 64]
    if arg1 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
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
        _1131 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _1193 = mem[_1131 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_1131 + 192])] = mem[_1131 + 224 len floor32(mem[_1131 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _1925 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _1193) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _1193) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _1193) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _1193) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _1193) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _1193) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1193) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1193) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _2621 = mem[(32 * _1193) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _1193) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _1193) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _1193) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1193) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1193) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1193) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1193) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
        mem[(32 * _1193) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1193) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1193) + ceil32(return_data.size) + 224]
        _2652 = mem[_2621 + (32 * _1193) + ceil32(return_data.size) + 224]
        mem[(32 * _1193) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_2621 + (32 * _1193) + ceil32(return_data.size) + 224])] = mem[_2621 + (32 * _1193) + ceil32(return_data.size) + 256 len floor32(mem[_2621 + (32 * _1193) + ceil32(return_data.size) + 224])]
        require 1 < mem[(32 * _1193) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _2652) + (32 * _1193) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _1925 > mem[(32 * _1193) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _2652) + (32 * _1193) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _2652) + (32 * _1193) + (2 * ceil32(return_data.size)) + 352 len 64]
    if arg2 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
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
        _1135 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _1195 = mem[_1135 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_1135 + 192])] = mem[_1135 + 224 len floor32(mem[_1135 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _1927 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _1195) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _1195) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _1195) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _1195) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _1195) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _1195) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1195) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1195) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _2623 = mem[(32 * _1195) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _1195) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _1195) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _1195) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1195) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1195) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1195) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1195) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
        mem[(32 * _1195) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1195) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1195) + ceil32(return_data.size) + 224]
        _2653 = mem[_2623 + (32 * _1195) + ceil32(return_data.size) + 224]
        mem[(32 * _1195) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_2623 + (32 * _1195) + ceil32(return_data.size) + 224])] = mem[_2623 + (32 * _1195) + ceil32(return_data.size) + 256 len floor32(mem[_2623 + (32 * _1195) + ceil32(return_data.size) + 224])]
        require 1 < mem[(32 * _1195) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _2653) + (32 * _1195) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _1927 > mem[(32 * _1195) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _2653) + (32 * _1195) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _2653) + (32 * _1195) + (2 * ceil32(return_data.size)) + 352 len 64]
    if arg1 == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
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
        _1139 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _1197 = mem[_1139 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_1139 + 192])] = mem[_1139 + 224 len floor32(mem[_1139 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _1929 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _1197) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _1197) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _1197) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _1197) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _1197) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _1197) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1197) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1197) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _2625 = mem[(32 * _1197) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _1197) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _1197) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _1197) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1197) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1197) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1197) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1197) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
        mem[(32 * _1197) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1197) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1197) + ceil32(return_data.size) + 224]
        _2654 = mem[_2625 + (32 * _1197) + ceil32(return_data.size) + 224]
        mem[(32 * _1197) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_2625 + (32 * _1197) + ceil32(return_data.size) + 224])] = mem[_2625 + (32 * _1197) + ceil32(return_data.size) + 256 len floor32(mem[_2625 + (32 * _1197) + ceil32(return_data.size) + 224])]
        require 1 < mem[(32 * _1197) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _2654) + (32 * _1197) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _1929 > mem[(32 * _1197) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _2654) + (32 * _1197) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _2654) + (32 * _1197) + (2 * ceil32(return_data.size)) + 352 len 64]
    if arg2 == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83:
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
        _1147 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _1201 = mem[_1147 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_1147 + 192])] = mem[_1147 + 224 len floor32(mem[_1147 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _1933 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _1201) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _1201) + ceil32(return_data.size) + 228] = arg3
        mem[(32 * _1201) + ceil32(return_data.size) + 260] = 64
        mem[(32 * _1201) + ceil32(return_data.size) + 292] = 2
        mem[(32 * _1201) + ceil32(return_data.size) + 324 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _1201) + ceil32(return_data.size) + 324 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1201) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1201) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _2629 = mem[(32 * _1201) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _1201) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _1201) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _1201) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1201) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _1201) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1201) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1201) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
        mem[(32 * _1201) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _1201) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1201) + ceil32(return_data.size) + 224]
        _2656 = mem[_2629 + (32 * _1201) + ceil32(return_data.size) + 224]
        mem[(32 * _1201) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_2629 + (32 * _1201) + ceil32(return_data.size) + 224])] = mem[_2629 + (32 * _1201) + ceil32(return_data.size) + 256 len floor32(mem[_2629 + (32 * _1201) + ceil32(return_data.size) + 224])]
        require 1 < mem[(32 * _1201) + (2 * ceil32(return_data.size)) + 224]
        mem[(32 * _2656) + (32 * _1201) + (2 * ceil32(return_data.size)) + 352 len 0] = None
        if _1933 > mem[(32 * _1201) + (2 * ceil32(return_data.size)) + 288]:
            return 1, Array(len=2, data=mem[(32 * _2656) + (32 * _1201) + (2 * ceil32(return_data.size)) + 352 len 64])
        return 0, 64, 2, mem[(32 * _2656) + (32 * _1201) + (2 * ceil32(return_data.size)) + 352 len 64]
    mem[96] = 3
    mem[128] = arg1
    mem[160] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[192] = arg2
    mem[224] = 3
    mem[256] = arg1
    mem[288] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
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
    _1143 = mem[352 len 4], Mask(224, 32, arg3) >> 32
    require mem[352 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[352 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352] <= 4294967296 and mem[352 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], Mask(224, 32, arg3) >> 32 + 352]
    _1199 = mem[_1143 + 352]
    mem[ceil32(return_data.size) + 384 len floor32(mem[_1143 + 352])] = mem[_1143 + 384 len floor32(mem[_1143 + 352])]
    require 2 < mem[ceil32(return_data.size) + 352]
    _1931 = mem[ceil32(return_data.size) + 448]
    mem[(32 * _1199) + ceil32(return_data.size) + 384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _1199) + ceil32(return_data.size) + 388] = arg3
    mem[(32 * _1199) + ceil32(return_data.size) + 420] = 64
    mem[(32 * _1199) + ceil32(return_data.size) + 452] = 3
    mem[(32 * _1199) + ceil32(return_data.size) + 484 len 0] = None
    require ext_code.size(univ2Router2Address)
    staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=3, data=mem[(32 * _1199) + ceil32(return_data.size) + 484 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _1199) + ceil32(return_data.size) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _1199) + (2 * ceil32(return_data.size)) + 384
    require return_data.size >= 32
    _2627 = mem[(32 * _1199) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * _1199) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _1199) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _1199) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1199) + ceil32(return_data.size) + 384] <= 4294967296 and mem[(32 * _1199) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * _1199) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1199) + ceil32(return_data.size) + 384]) + 32 <= return_data.size
    mem[(32 * _1199) + (2 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _1199) + ceil32(return_data.size) + 384 len 4], Mask(224, 32, arg3) >> 32 + (32 * _1199) + ceil32(return_data.size) + 384]
    _2655 = mem[_2627 + (32 * _1199) + ceil32(return_data.size) + 384]
    mem[(32 * _1199) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_2627 + (32 * _1199) + ceil32(return_data.size) + 384])] = mem[_2627 + (32 * _1199) + ceil32(return_data.size) + 416 len floor32(mem[_2627 + (32 * _1199) + ceil32(return_data.size) + 384])]
    require 2 < mem[(32 * _1199) + (2 * ceil32(return_data.size)) + 384]
    mem[(32 * _2655) + (32 * _1199) + (2 * ceil32(return_data.size)) + 512 len 0] = None
    if _1931 > mem[(32 * _1199) + (2 * ceil32(return_data.size)) + 480]:
        return 1, Array(len=3, data=mem[(32 * _2655) + (32 * _1199) + (2 * ceil32(return_data.size)) + 512 len 96])
    return 0, 64, 3, mem[(32 * _2655) + (32 * _1199) + (2 * ceil32(return_data.size)) + 512 len 96]
}



}
